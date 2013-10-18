.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedField;
.super Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.source "SourceFile"


# instance fields
.field protected final _field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 28
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    .line 29
    return-void
.end method


# virtual methods
.method public final addOrOverride(Ljava/lang/annotation/Annotation;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    .line 44
    return-void
.end method

.method public final bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotated()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

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
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

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
    .line 84
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to setValue() for field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
