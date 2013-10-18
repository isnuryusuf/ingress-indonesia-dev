.class final Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# instance fields
.field protected final _ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 223
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;->_ctor:Ljava/lang/reflect/Constructor;

    .line 224
    return-void
.end method


# virtual methods
.method public final _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;->_ctor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
