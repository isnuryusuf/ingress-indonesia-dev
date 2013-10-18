.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "SourceFile"


# instance fields
.field protected final _index:I

.field protected final _owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected final _type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/introspect/AnnotationMap;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 54
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 55
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    .line 56
    iput p4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    .line 57
    return-void
.end method


# virtual methods
.method public final getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    return v0
.end method

.method public final getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getOwner()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public final getParameterType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot call setValue() on constructor parameter of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[parameter #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    if-ne p1, v0, :cond_0

    .line 64
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_owner:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->_index:I

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->replaceParameterAnnotations(ILorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object p0

    goto :goto_0
.end method
