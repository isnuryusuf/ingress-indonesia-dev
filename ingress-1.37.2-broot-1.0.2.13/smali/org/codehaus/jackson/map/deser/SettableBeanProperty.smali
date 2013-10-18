.class public abstract Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final _contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

.field protected _managedReferenceName:Ljava/lang/String;

.field protected _nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

.field protected final _propName:Ljava/lang/String;

.field protected _propertyIndex:I

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

.field protected _valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 101
    :goto_0
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 103
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 104
    return-void

    .line 99
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 113
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 115
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 116
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 117
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 118
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 119
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 120
    iget v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 121
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 130
    iget-object v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 131
    iget-object v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 132
    iget-object v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 133
    iget-object v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 134
    iget-object v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 135
    iget v1, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 137
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 138
    if-nez p2, :cond_1

    .line 142
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 144
    return-void

    .line 141
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v2, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 334
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 337
    :cond_0
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 338
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 342
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 315
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 316
    if-nez p2, :cond_0

    const-string/jumbo v0, "[NULL]"

    .line 317
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Problem deserializing property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    const-string/jumbo v2, "\' (expected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v2, "; actual type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_1

    .line 322
    const-string/jumbo v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_1
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0

    .line 316
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_1
    const-string/jumbo v0, " (no error message provided)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 329
    return-void
.end method

.method public assignIndex(I)V
    .locals 3
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' already had index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), trying to assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iput p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 176
    return-void
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 293
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->nullValue(Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedReferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyIndex()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    return v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getValueTypeDeserializer()Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueTypeDeserializer()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public setManagedReferenceName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;"
        }
    .end annotation
.end method
