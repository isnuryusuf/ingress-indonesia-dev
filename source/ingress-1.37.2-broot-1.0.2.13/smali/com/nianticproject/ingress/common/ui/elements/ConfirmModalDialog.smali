.class public abstract Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog$Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 53
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 54
    invoke-static {p2}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 55
    invoke-static {p3}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 56
    invoke-static {p4}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->d:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->e:Ljava/lang/String;

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 54
    goto :goto_1

    :cond_2
    move v0, v2

    .line 55
    goto :goto_2

    :cond_3
    move v1, v2

    .line 56
    goto :goto_3
.end method

.method protected static d()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const v7, 0x3e99999a

    .line 65
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 66
    const-string/jumbo v1, "default"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 67
    const-string/jumbo v2, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v5, p1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 70
    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5, p1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 72
    new-instance v4, Lcom/nianticproject/ingress/common/ui/elements/s;

    invoke-direct {v4, p0, v2, v3}, Lcom/nianticproject/ingress/common/ui/elements/s;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)V

    invoke-virtual {v2, v4}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 83
    new-instance v4, Lcom/nianticproject/ingress/common/ui/elements/t;

    invoke-direct {v4, p0, v2, v3}, Lcom/nianticproject/ingress/common/ui/elements/t;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)V

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 94
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 96
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 97
    const v5, 0x3da3d70a

    invoke-static {v5}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v5

    .line 98
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/a/a/c;->d(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 100
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 101
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 102
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/elements/ConfirmModalDialog;->b:Ljava/lang/String;

    invoke-direct {v4, v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 103
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 104
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/a/c;->g(Lcom/a/a/e;)Lcom/a/a/c;

    .line 106
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/a/c;->g(Lcom/a/a/e;)Lcom/a/a/c;

    .line 109
    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
