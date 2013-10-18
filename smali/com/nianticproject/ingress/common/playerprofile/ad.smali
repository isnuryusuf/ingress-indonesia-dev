.class final Lcom/nianticproject/ingress/common/playerprofile/ad;
.super Lcom/nianticproject/ingress/common/ui/elements/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/ac;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ad;->a:Lcom/nianticproject/ingress/common/playerprofile/ac;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ad;->a:Lcom/nianticproject/ingress/common/playerprofile/ac;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/ac;->a(Lcom/nianticproject/ingress/common/playerprofile/ac;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ad;->a:Lcom/nianticproject/ingress/common/playerprofile/ac;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/ac;->b(Lcom/nianticproject/ingress/common/playerprofile/ac;)Lcom/nianticproject/ingress/common/playerprofile/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/ap;->a()V

    .line 93
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
