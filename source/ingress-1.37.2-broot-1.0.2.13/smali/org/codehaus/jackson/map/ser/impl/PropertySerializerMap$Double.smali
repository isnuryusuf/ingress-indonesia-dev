.class final Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "SourceFile"


# instance fields
.field private final _serializer1:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _serializer2:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _type1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final _type2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 160
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    .line 161
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 162
    return-void
.end method


# virtual methods
.method public final newWith(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 180
    const/4 v1, 0x0

    new-instance v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v2, v3, v4}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v2, v0, v1

    .line 181
    const/4 v1, 0x1

    new-instance v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v2, v3, v4}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v2, v0, v1

    .line 182
    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;-><init>([Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    return-object v1
.end method

.method public final serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
