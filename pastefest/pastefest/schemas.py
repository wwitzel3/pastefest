from colander import (
    MappingSchema,
    SchemaNode,
    Boolean,
    String,
    Int,
    )

class Paste(MappingSchema):
    description = SchemaNode(String())
    private = SchemaNode(Boolean())
    raw = SchemaNode(String())

def validate(schema):
    def _validate(f):
        def _f(*args, **kwargs):
            return f(*args, **kwargs)
        return _f
    return _validate

