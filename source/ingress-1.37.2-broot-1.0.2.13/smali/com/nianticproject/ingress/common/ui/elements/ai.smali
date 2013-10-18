.class final Lcom/nianticproject/ingress/common/ui/elements/ai;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ai;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string/jumbo v0, "PortalInfoDialog:playerListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ai;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ai;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V

    .line 182
    :cond_0
    return-void
.end method
