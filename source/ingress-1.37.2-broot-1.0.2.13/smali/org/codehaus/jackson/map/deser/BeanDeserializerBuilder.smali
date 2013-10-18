.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected _backRefProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoreAllUnknown:Z

.field protected _injectables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 91
    return-void
.end method


# virtual methods
.method public addBackReferenceProperty(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    return-void
.end method

.method public addCreatorProperty(Lorg/codehaus/jackson/map/BeanPropertyDefinition;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public addIgnorable(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public addInjectable(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    .line 175
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/impl/ValueInjector;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public addOrReplaceProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 143
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Duplicate property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method public build(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v4, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->assignIndexes()V

    .line 273
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    iget-boolean v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAnySetter(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 214
    return-void
.end method

.method public setIgnoreUnknownProperties(Z)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-boolean p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    .line 218
    return-void
.end method

.method public setValueInstantiator(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 225
    return-void
.end method
