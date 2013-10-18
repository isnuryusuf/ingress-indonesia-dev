.class public Lorg/codehaus/jackson/map/module/SimpleModule;
.super Lorg/codehaus/jackson/map/Module;
.source "SourceFile"


# instance fields
.field protected _abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

.field protected _deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

.field protected _keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

.field protected _keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected _mixins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _name:Ljava/lang/String;

.field protected _serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected _valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

.field protected final _version:Lorg/codehaus/jackson/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Module;-><init>()V

    .line 22
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 23
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 25
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 26
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 33
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 40
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 48
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    .line 60
    return-void
.end method


# virtual methods
.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 186
    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 161
    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 170
    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 143
    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
    .locals 3
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addSerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeySerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lorg/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addValueInstantiators(Lorg/codehaus/jackson/map/deser/ValueInstantiators;)V

    .line 254
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 255
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1, v1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 259
    :cond_6
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    return-object v0
.end method
