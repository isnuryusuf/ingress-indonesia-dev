.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
.super Lorg/codehaus/jackson/map/DeserializerFactory$Config;
.source "SourceFile"


# static fields
.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected static final NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected static final NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected static final NO_VALUE_INSTANTIATORS:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;


# instance fields
.field protected final _abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

.field protected final _additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected final _modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected final _valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-array v0, v1, [Lorg/codehaus/jackson/map/KeyDeserializers;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 46
    new-array v0, v1, [Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 47
    new-array v0, v1, [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 48
    new-array v0, v1, [Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 97
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    .line 98
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;-><init>()V

    .line 110
    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->access$000()[Lorg/codehaus/jackson/map/Deserializers;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    .line 112
    if-nez p2, :cond_1

    sget-object p2, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lorg/codehaus/jackson/map/KeyDeserializers;

    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 114
    if-nez p3, :cond_2

    sget-object p3, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    :cond_2
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 115
    if-nez p4, :cond_3

    sget-object p4, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    :cond_3
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 116
    if-nez p5, :cond_4

    sget-object p5, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    :cond_4
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    .line 117
    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .parameter

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 159
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalDeserializers(Lorg/codehaus/jackson/map/Deserializers;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .parameter

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not pass null Deserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/codehaus/jackson/map/Deserializers;

    .line 126
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not pass null KeyDeserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 137
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withValueInstantiators(Lorg/codehaus/jackson/map/deser/ValueInstantiators;)Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6
    .parameter

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    .line 170
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lorg/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lorg/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;[Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object v0
.end method
