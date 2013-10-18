.class final Lcom/nianticproject/ingress/common/ui/elements/v;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/v;->a:Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const-string/jumbo v0, "InviteNag"

    const-string/jumbo v1, "recruit"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/v;->a:Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;->g()V

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/v;->a:Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;)Lcom/nianticproject/ingress/common/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ac;->c()V

    .line 105
    return-void
.end method
