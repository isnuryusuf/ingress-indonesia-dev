.class public Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_PROPERTIES:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected _anyGetter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _filterId:Ljava/lang/Object;

.field protected _filteredProperties:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 64
    return-void
.end method


# virtual methods
.method public build()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 123
    :cond_1
    sget-object v2, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 128
    :goto_1
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-object v2, v0

    goto :goto_1
.end method

.method public createDummy()Lorg/codehaus/jackson/map/ser/BeanSerializer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/ser/BeanSerializer;->createDummy(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public setAnyGetter(Lorg/codehaus/jackson/map/ser/AnyGetterWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 98
    return-void
.end method

.method public setFilterId(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setFilteredProperties([Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 94
    return-void
.end method

.method public setProperties(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 90
    return-void
.end method
