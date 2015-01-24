import graph;
//size(320,200,IgnoreAspect);
size(180,120,IgnoreAspect);

real a = 1;
real V0 = 1;

real V ( real x)
{
  return  V0 / a * ( a - abs( 2*x - a));
}

bool3 branch(real x)
{
  return  ( x >0 && x <a ) ? true : false;
}


real delta = 0.2;
real h = 5;

//draw(graph(V,-2,2, n=1000,branch),brown);
//scale(false);
ylimits(0,V0+h);
xlimits(0,a+delta+delta/2);
crop();


fill(box((-delta,0),( 0, V0+h)), lightgray);
fill(box((a,0),( a+delta, V0+h)), lightgray);

xaxis("$x$", Arrow);
yaxis("$V(x)$",  Arrow, autorotate=false);
labelx("$L$", a);
//labelx("$\frac{a}{2}$", a/2);
labelx("$0$", 0, SW);
labely("$V_{0}$", V0);

xequals(0, ymin=0, brown);
xequals(a, ymin=0, brown);
//yequals(V0, xmin=0, xmax=a/2, gray+dashed);
//xequals(a/2, ymin=0, ymax=V0, gray+dashed);
//shipout(title);

