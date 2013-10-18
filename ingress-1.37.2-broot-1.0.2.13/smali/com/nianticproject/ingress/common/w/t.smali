.class public final Lcom/nianticproject/ingress/common/w/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/w/k;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/w/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/w/k;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w/t;->a:Lcom/nianticproject/ingress/common/w/k;

    .line 23
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/t;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/w/k;->a(Z)V

    .line 48
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/t;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/w/k;->b()V

    .line 43
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/t;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/w/k;->c()V

    .line 28
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v0, "ForwardingDevicePower.resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/t;->a:Lcom/nianticproject/ingress/common/w/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/w/k;->f_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
