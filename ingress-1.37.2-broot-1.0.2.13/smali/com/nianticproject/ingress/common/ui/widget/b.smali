.class final Lcom/nianticproject/ingress/common/ui/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field final c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field final d:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

.field final e:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field final g:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->d:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->errorLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 84
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    const-string/jumbo v1, ""

    iget-object v2, p4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0, v1, p4}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/b;->e:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 89
    return-void
.end method
