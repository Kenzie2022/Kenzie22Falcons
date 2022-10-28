SampleClass.SampleStaticString = ' This is a static variable. Enjoy';
system.debug(SampleClass.SampleStaticString);

SampleClass.SampleStaticMethod();

SampleClass s = new SampleClass();
s.SampleString = 'This is non_static variable. Enjoy';
system.debug(s.SampleString);

s.SampleMethod();