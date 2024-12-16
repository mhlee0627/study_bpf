#include "shape.h"

#include <fmt/core.h>

namespace shape {

Rectangle::Rectangle(float w, float h) : w_(w), h_(h)
{
}

float Rectangle::getSize() const
{
    return w_ * h_;
}

void Rectangle::print() const
{
    fmt::print("my size: {}...\n", getSize());
}

}