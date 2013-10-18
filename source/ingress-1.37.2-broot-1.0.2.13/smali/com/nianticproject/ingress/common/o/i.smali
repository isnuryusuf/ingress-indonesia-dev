.class final Lcom/nianticproject/ingress/common/o/i;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/o/h;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/o/h;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/common/o/i;->a:Lcom/nianticproject/ingress/common/o/h;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
