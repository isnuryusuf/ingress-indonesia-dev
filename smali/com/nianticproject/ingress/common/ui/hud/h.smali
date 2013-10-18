.class final Lcom/nianticproject/ingress/common/ui/hud/h;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/hud/g;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/hud/g;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/hud/h;->a:Lcom/nianticproject/ingress/common/ui/hud/g;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "PortalInfoHud:playerChangeListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/h;->a:Lcom/nianticproject/ingress/common/ui/hud/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Lcom/nianticproject/ingress/common/ui/hud/g;)Lcom/nianticproject/ingress/common/w/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/a;->a(Lcom/google/a/d/u;)V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/h;->a:Lcom/nianticproject/ingress/common/ui/hud/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/hud/g;->b(Lcom/nianticproject/ingress/common/ui/hud/g;)V

    .line 131
    return-void
.end method
