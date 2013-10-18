.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SourceFile"


# instance fields
.field protected final _annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _getter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 448
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 449
    invoke-virtual {p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    .line 450
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 454
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 455
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    .line 456
    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 488
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    if-nez v0, :cond_1

    .line 509
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Problem deserializing \'setterless\' property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': get method returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    goto :goto_0

    .line 511
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should never call \'set\' on setterless property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public final bridge synthetic withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    move-result-object v0

    return-object v0
.end method
