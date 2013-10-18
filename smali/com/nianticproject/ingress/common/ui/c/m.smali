.class final Lcom/nianticproject/ingress/common/ui/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/c/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/c/k;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/c/m;->a:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/c/m;->a:Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/c/k;->a(Lcom/nianticproject/ingress/common/ui/c/k;)V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "delayedPlayFlipPortalSwirlSoundTask"

    return-object v0
.end method
