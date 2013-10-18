.class public final Lcom/nianticproject/ingress/common/o/j;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/push/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;)Lcom/nianticproject/ingress/shared/rpc/push/a;
    .locals 1
    .parameter

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/push/a;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/push/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-static {p1}, Lcom/nianticproject/ingress/common/o/j;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/nianticproject/ingress/shared/rpc/push/a;

    move-result-object v0

    return-object v0
.end method
