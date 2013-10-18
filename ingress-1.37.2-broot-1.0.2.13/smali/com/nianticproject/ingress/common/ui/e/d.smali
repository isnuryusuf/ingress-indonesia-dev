.class public final Lcom/nianticproject/ingress/common/ui/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>(ZZ)V

    .line 15
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/e/d;->a:Z

    .line 25
    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/ui/e/d;->b:Z

    .line 26
    return-void
.end method
