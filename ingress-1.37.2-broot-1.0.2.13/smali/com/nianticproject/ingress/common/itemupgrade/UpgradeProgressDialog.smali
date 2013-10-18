.class public final Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 40
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog$Style;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 68
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 70
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v2, ""

    const/high16 v3, 0x4180

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 71
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setAlignment(I)V

    .line 72
    iget-object v1, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setWrap(Z)V

    .line 74
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 75
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 76
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 78
    return-object v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->clearActions()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->a()V

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;->a:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const/high16 v1, 0x4040

    new-instance v2, Lcom/nianticproject/ingress/common/itemupgrade/q;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/itemupgrade/q;-><init>(Lcom/nianticproject/ingress/common/itemupgrade/UpgradeProgressDialog;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 64
    return-void
.end method
