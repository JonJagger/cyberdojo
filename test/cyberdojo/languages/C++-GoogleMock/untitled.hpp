#ifndef UNTITLED_INCLUDED
#define UNTITLED_INCLUDED

class UntitledHelper;

class Untitled {
public:
    Untitled(UntitledHelper const & _helper);

    int answer();

private:
    UntitledHelper const & helper;
};

#endif
