.class public abstract Lcom/nianticproject/ingress/common/ui/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/b/j;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/f;-><init>(Lcom/nianticproject/ingress/common/ui/b/j;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/b;->a:Lcom/nianticproject/ingress/common/ui/b/f;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/w/f;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/b;->a:Lcom/nianticproject/ingress/common/ui/b/f;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/b/f;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 23
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
