from colander import (
    MappingSchema,
    SchemaNode,
    Boolean,
    String,
    Int,
    )

class Paste(MappingSchema):
    desc = SchemaNode(String(), missing=None)
    private = SchemaNode(Boolean(), missing=False)
    raw = SchemaNode(String())

def validate(schema):
    def _validate(f):
        def _f(*args, **kwargs):
            return f(*args, **kwargs)
        return _f
    return _validate

