.class final Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;
.super Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "SourceFile"


# instance fields
.field protected final _delegate:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 69
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 70
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 71
    return-void
.end method


# virtual methods
.method public final serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    array-length v2, v2

    .line 85
    :goto_0
    if-ge v0, v2, :cond_0

    .line 86
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    if-ne v0, v2, :cond_1

    .line 94
    :goto_1
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1
.end method

.method public final withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    return-object v0
.end method
