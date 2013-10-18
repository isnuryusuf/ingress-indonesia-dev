.class final Lcom/nianticproject/ingress/common/o/e;
.super Lorg/codehaus/jackson/map/KeyDeserializer;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/codehaus/jackson/map/KeyDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserializeKey(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/m;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/m;

    move-result-object v0

    return-object v0
.end method
