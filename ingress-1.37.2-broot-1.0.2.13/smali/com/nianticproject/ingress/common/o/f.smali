.class final Lcom/nianticproject/ingress/common/o/f;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/nianticproject/ingress/gameentity/components/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/m;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/m;

    move-result-object v0

    return-object v0
.end method
