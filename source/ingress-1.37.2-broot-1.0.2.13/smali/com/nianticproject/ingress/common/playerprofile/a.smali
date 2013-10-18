.class final Lcom/nianticproject/ingress/common/playerprofile/a;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/playerprofile/a;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/c;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/nianticproject/ingress/common/playerprofile/d;

.field private final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final g:F

.field private h:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/c;F)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->d:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/d;

    invoke-direct {v0, v3}, Lcom/nianticproject/ingress/common/playerprofile/d;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    .line 66
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/a;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    .line 67
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 68
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->c:Lcom/nianticproject/ingress/common/playerprofile/c;

    .line 69
    const/high16 v0, 0x4200

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->h:F

    .line 70
    iput p4, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->g:F

    .line 71
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4100

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 73
    const-string/jumbo v0, "avatar-color-picker"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 75
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    .line 77
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/playerprofile/a;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->h:F

    const/high16 v2, 0x4000

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 82
    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 107
    :cond_0
    if-eqz p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->a:Ljava/lang/Integer;

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iput-object p1, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->c:Lcom/nianticproject/ingress/common/playerprofile/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/c;->a(Lcom/nianticproject/ingress/shared/playerprofile/a;I)V

    .line 116
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/a;Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->g:F

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    .line 195
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/a;->invalidate()V

    .line 196
    return-void
.end method

.method public final layout()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/a;->needsLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    const/high16 v0, 0x4140

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    const/high16 v2, 0x4000

    div-float v3, v0, v2

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 126
    invoke-direct {p0, v1, v1}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v2, v6}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 136
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/d;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v8, "avatar-color-picker-button-up"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v9, "avatar-color-picker-button-down"

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v10, "avatar-color-picker-button-checked"

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-direct {v2, v6, v7, v8}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 143
    new-instance v6, Lcom/nianticproject/ingress/common/playerprofile/b;

    invoke-direct {v6, p0, v2, v0}, Lcom/nianticproject/ingress/common/playerprofile/b;-><init>(Lcom/nianticproject/ingress/common/playerprofile/a;Lcom/nianticproject/ingress/common/ui/widget/d;Ljava/lang/Integer;)V

    invoke-virtual {v2, v6}, Lcom/nianticproject/ingress/common/ui/widget/d;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 150
    if-nez v1, :cond_1

    move-object v1, v2

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v5, v7, v11

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    iget v6, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->h:F

    invoke-virtual {v5, v6}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v5

    iget v6, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->h:F

    invoke-virtual {v5, v6}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 160
    iget-object v5, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/playerprofile/d;->a:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/playerprofile/d;->a:Ljava/lang/Integer;

    invoke-static {v5, v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->e:Lcom/nianticproject/ingress/common/playerprofile/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/playerprofile/d;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/a;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Ljava/lang/Integer;)V

    .line 170
    :cond_3
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout()V

    .line 172
    :cond_4
    return-void
.end method
