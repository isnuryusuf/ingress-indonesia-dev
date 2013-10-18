.class public final Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _setter:Ljava/lang/reflect/Method;

.field protected final _type:Lorg/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/reflect/Method;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 63
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 64
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    .line 65
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 58
    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final _throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 147
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 148
    if-nez p3, :cond_0

    const-string/jumbo v0, "[NULL]"

    .line 149
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Problem deserializing \"any\" property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\' of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (expected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v2, "; actual type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    const-string/jumbo v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_1
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, p1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const-string/jumbo v0, " (no error message provided)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 160
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 161
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 163
    :cond_3
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    .line 164
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 168
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 171
    :cond_5
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, p1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 117
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, p4, v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public final getProperty()Lorg/codehaus/jackson/map/BeanProperty;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    return-object v0
.end method

.method public final getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final hasValueDeserializer()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {p0, v0, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[any property on class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
