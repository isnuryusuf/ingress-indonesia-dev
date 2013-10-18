.class final Lcom/nianticproject/ingress/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ev;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/au;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/au;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/av;->a:Lcom/nianticproject/ingress/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;

    iget-object v1, p0, Lcom/nianticproject/ingress/av;->a:Lcom/nianticproject/ingress/au;

    invoke-static {v1}, Lcom/nianticproject/ingress/au;->a(Lcom/nianticproject/ingress/au;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/NemesisApplication;->i()Lcom/nianticproject/ingress/common/j/av;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeEarnedDialog;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;)V

    return-object v0
.end method
