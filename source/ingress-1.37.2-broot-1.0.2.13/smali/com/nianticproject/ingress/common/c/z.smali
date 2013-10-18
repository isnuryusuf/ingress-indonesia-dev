.class final Lcom/nianticproject/ingress/common/c/z;
.super Lcom/nianticproject/ingress/common/c/br;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/z;->a:Lcom/nianticproject/ingress/common/c/ai;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/br;-><init>(Lcom/nianticproject/ingress/common/c/bn;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "SoundTrackPauseTask"

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/z;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/z;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->d(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 115
    return-void
.end method
