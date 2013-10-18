.class final Lcom/nianticproject/ingress/common/o/k;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/nianticproject/ingress/shared/af;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/af;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/af;->n:Lcom/nianticproject/ingress/shared/af;

    :cond_0
    return-object v0
.end method
