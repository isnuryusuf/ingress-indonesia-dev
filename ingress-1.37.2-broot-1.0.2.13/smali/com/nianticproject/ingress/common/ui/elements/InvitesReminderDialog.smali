.class public final Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ac;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog$Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;->b:F

    .line 55
    const-string/jumbo v0, "InviteNag"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;->a:Lcom/nianticproject/ingress/common/ac;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;)Lcom/nianticproject/ingress/common/ac;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;->a:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-string/jumbo v0, "default-blue"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 73
    const-string/jumbo v1, "default-yellow"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/p;->A()Lcom/nianticproject/ingress/common/m/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/m/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 80
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, "You have "

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 81
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v4, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 82
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, " unused invites."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 84
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v1, 0x3d23d70a

    mul-float/2addr v1, v0

    const-string/jumbo v0, "default"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, "Recruit"

    invoke-direct {v2, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/nianticproject/ingress/common/ui/elements/v;

    invoke-direct {v4, p0}, Lcom/nianticproject/ingress/common/ui/elements/v;-><init>(Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;)V

    invoke-virtual {v2, v4}, Lcom/nianticproject/ingress/common/ui/widget/f;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    const v4, 0x3ecccccd

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 86
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 87
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 88
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 89
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 90
    return-object v1
.end method

.method protected final a(Lcom/a/a/c;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 68
    return-void
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    const-string/jumbo v0, "default-message-window"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 62
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(F)Z

    move-result v0

    return v0
.end method
