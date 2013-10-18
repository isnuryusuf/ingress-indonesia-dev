.class final Lcom/nianticproject/ingress/common/scanner/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/nianticproject/ingress/common/scanner/a/aj;

.field final b:Lcom/nianticproject/ingress/common/scanner/a/aj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/aj;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/aj;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/aj;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/aj;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/a/ah;-><init>()V

    return-void
.end method
