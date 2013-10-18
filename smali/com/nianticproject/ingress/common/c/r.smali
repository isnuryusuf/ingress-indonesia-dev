.class final Lcom/nianticproject/ingress/common/c/r;
.super Lcom/nianticproject/ingress/common/c/br;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/r;->a:Lcom/nianticproject/ingress/common/c/ai;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/r;->b:Z

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/br;-><init>(Lcom/nianticproject/ingress/common/c/bn;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "CacheSoundTrackTask"

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/r;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/r;->e:Lcom/nianticproject/ingress/common/c/bn;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/r;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/c/ai;->b(Lcom/nianticproject/ingress/common/c/bn;Z)V

    .line 193
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/r;->b:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/c/r;->a(I)I

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/c/r;->a(I)I

    move-result v0

    goto :goto_0
.end method
