class Point {

    private double x;
    private double y;


    public void setX(double x) {
        this.x = x;
    }

    public void setY(double y) {
        this.y = y;
    }


    //Method to obtain distance of a point w.r.t origin
    public double distance() {
        return Math.sqrt(Math.pow((this.x - 0), 2) + Math.pow((this.y - 0), 2));
    }

    //Method to obtain distance of a point w.r.t another point
    public double distance(Point point) {
        return Math.sqrt(Math.pow((this.x - point.x), 2) + Math.pow((this.y - point.y), 2));
    }

}

class Overloading {
    public static void main(String[] args) {
        Point p1 = new Point();
        p1.setX(2);
        p1.setY(3);
        System.out.println(p1.distance());
        Point p2 = new Point();
        p2.setX(3);
        p2.setY(4);
        System.out.println(p1.distance(p2));
    }
}
