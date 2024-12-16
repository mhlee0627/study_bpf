#ifndef SHAPE_H
#define SHAPE_H

namespace shape {
    
class Rectangle {
public:
    Rectangle(float w, float h);

    float getSize() const;
    void print() const;
private:
    float w_, h_;
};

}

#endif