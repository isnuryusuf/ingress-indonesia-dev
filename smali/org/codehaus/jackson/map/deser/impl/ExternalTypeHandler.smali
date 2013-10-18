.class public Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 42
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v0, v0

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [Lorg/codehaus/jackson/util/TokenBuffer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    .line 46
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lorg/codehaus/jackson/util/TokenBuffer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lorg/codehaus/jackson/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 35
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method protected final _deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 115
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 116
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v1, v1, p4

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 119
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 120
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    .line 122
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 124
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 92
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Missing external type id property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 100
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Missing property \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' for external type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 91
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    return-object p3
.end method

.method public handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_properties:[Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v0, v0, v3

    .line 66
    invoke-virtual {v0, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 68
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 69
    if-eqz p4, :cond_2

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    move v0, v1

    .line 79
    :goto_1
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aput-object v5, v0, v3

    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aput-object v5, v0, v3

    :cond_1
    move v2, v1

    .line 85
    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 72
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 73
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_tokens:[Lorg/codehaus/jackson/util/TokenBuffer;

    aput-object v0, v4, v3

    .line 74
    if-eqz p4, :cond_4

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>(Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
