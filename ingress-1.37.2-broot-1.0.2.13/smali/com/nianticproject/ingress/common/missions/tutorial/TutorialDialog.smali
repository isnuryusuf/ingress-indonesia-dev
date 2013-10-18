.class public abstract Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
.super Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;-><init>(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog$Style;)V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->b:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    .line 53
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/v;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/missions/tutorial/v;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 72
    return-void
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;F)Lcom/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            "F)",
            "Lcom/a/a/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Lcom/a/a/c;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            "FF)",
            "Lcom/a/a/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p0, p1, p3}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    sget-object v0, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    iget-char v1, v0, Lcom/nianticproject/ingress/common/ui/d;->g:C

    .line 98
    array-length v3, p2

    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget-object v4, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    iget-char v4, v4, Lcom/nianticproject/ingress/common/ui/d;->g:C

    if-ne v0, v4, :cond_0

    .line 102
    sget-object v0, Lcom/nianticproject/ingress/common/ui/d;->f:Lcom/nianticproject/ingress/common/ui/d;

    iget-char v0, v0, Lcom/nianticproject/ingress/common/ui/d;->g:C

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/ui/d;->e:Lcom/nianticproject/ingress/common/ui/d;

    iget-char v0, v0, Lcom/nianticproject/ingress/common/ui/d;->g:C

    goto :goto_1

    .line 107
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "small"

    invoke-direct {v0, v2, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 108
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 110
    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0, p1, p3}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;

    move-result-object v4

    .line 123
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 124
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v1, 0x3d23d70a

    mul-float v2, v0, v1

    .line 125
    const/high16 v0, 0x3f00

    mul-float v3, v2, v0

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 128
    const/4 v0, 0x1

    move v1, v0

    .line 129
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v5, v0, v1, v2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 131
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 132
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 130
    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->b:Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog$Style;->showArrowLine:Z

    if-eqz v0, :cond_3

    .line 136
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    const-string/jumbo v1, "tutorial-next"

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/w;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/w;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 137
    int-to-float v1, p3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v6

    sub-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    invoke-virtual {p0, p1, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 139
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    invoke-static {v5, v1, v3, v2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Lcom/a/a/c;

    .line 140
    invoke-static {v5, v0, v2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Actor;F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    .line 143
    :cond_3
    return-object v5
.end method

.method protected a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const-string/jumbo v0, "dialogue-grad"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 117
    return-void
.end method

.method protected b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    return-object v0
.end method
