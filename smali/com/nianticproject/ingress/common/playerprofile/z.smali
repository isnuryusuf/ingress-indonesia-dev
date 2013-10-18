.class public final Lcom/nianticproject/ingress/common/playerprofile/z;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/ab;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final c:Lcom/nianticproject/ingress/common/j/av;

.field private final d:F

.field private final e:F

.field private final f:Ljava/lang/Integer;

.field private final g:Ljava/lang/Integer;

.field private final h:Lcom/google/a/c/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/by",
            "<",
            "Lcom/nianticproject/ingress/common/j/d;",
            "Lcom/nianticproject/ingress/common/playerprofile/BadgeView;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/j/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private final k:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Ljava/lang/Integer;Ljava/lang/Integer;FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/a/c/by;->b()Lcom/google/a/c/by;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    .line 62
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->i:Ljava/util/LinkedList;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/aa;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/aa;-><init>(Lcom/nianticproject/ingress/common/playerprofile/z;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->k:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 96
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 97
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ab;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->a:Lcom/nianticproject/ingress/common/playerprofile/ab;

    .line 98
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 99
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->c:Lcom/nianticproject/ingress/common/j/av;

    .line 100
    iput p6, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->d:F

    .line 101
    iput p7, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->e:F

    .line 102
    iput-object p4, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->f:Ljava/lang/Integer;

    .line 103
    iput-object p5, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->g:Ljava/lang/Integer;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 112
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    if-eq p1, v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/z;->a()V

    .line 147
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Z)V

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 161
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->a:Lcom/nianticproject/ingress/common/playerprofile/ab;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/ab;->a(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->a:Lcom/nianticproject/ingress/common/playerprofile/ab;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/ab;->b()V

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/common/j/d;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    if-eqz p2, :cond_0

    .line 201
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/j/d;->d()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/z;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)V

    return-void
.end method

.method private b(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;
    .locals 4
    .parameter

    .prologue
    .line 313
    const-string/jumbo v1, "MORE"

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v2, "profiles-badges-more"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    invoke-virtual {v1}, Lcom/google/a/c/by;->a()Lcom/google/a/c/am;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/a/c/am;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 319
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a()V

    .line 320
    return-object p1
.end method

.method private b(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z
    .locals 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 349
    :cond_0
    const/4 v13, 0x0

    .line 468
    :cond_1
    :goto_0
    return v13

    .line 352
    :cond_2
    const/4 v6, 0x0

    .line 354
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 356
    const/4 v4, 0x0

    .line 358
    const/4 v3, 0x1

    .line 359
    const/4 v2, 0x0

    .line 360
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v14

    .line 363
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v15

    .line 366
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v13, v6

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 367
    const/4 v2, 0x0

    .line 368
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->f:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_8

    if-nez p3, :cond_8

    .line 372
    new-instance v2, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->k:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/z;->b(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    move-result-object v2

    .line 382
    :cond_3
    :goto_2
    if-nez v2, :cond_5

    .line 383
    const-string/jumbo v3, "..."

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v4, "profiles-badges-loading"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v3, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    new-instance v2, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const/4 v7, 0x1

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->k:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    :cond_4
    const/4 v2, 0x0

    .line 386
    :cond_5
    :goto_3
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()Lcom/a/a/e;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/a/a/e;->a(Ljava/lang/Object;)F

    .line 389
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/nianticproject/ingress/common/playerprofile/z;->getPrefWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->e:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sub-float v6, v3, v4

    .line 391
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v3, :cond_b

    move v3, v14

    .line 397
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_c

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->g:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    div-float v4, v6, v4

    sub-float/2addr v4, v3

    move v5, v4

    .line 403
    :goto_5
    add-float v4, v11, v5

    add-float/2addr v4, v3

    float-to-double v0, v4

    move-wide/from16 v17, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    cmpl-double v4, v17, v6

    if-lez v4, :cond_17

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->f:Ljava/lang/Integer;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->f:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v10, v4, :cond_d

    .line 412
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 413
    iget v3, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/z;->b(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 457
    :cond_7
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    if-nez v2, :cond_1

    .line 459
    const/4 v2, 0x1

    if-le v10, v2, :cond_14

    .line 463
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    goto/16 :goto_0

    .line 373
    :cond_8
    if-nez p3, :cond_3

    .line 378
    const-string/jumbo v3, "..."

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v4, "profiles-badges-loading"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-static {v3, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v3

    new-instance v2, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    goto/16 :goto_2

    .line 383
    :cond_9
    invoke-static {v3}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->c:Lcom/nianticproject/ingress/common/j/av;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->getPrefWidth()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;IZ)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    invoke-virtual {v4, v3, v2}, Lcom/google/a/c/by;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/common/j/d;)V

    goto/16 :goto_3

    .line 391
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 400
    :cond_c
    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->getPrefWidth()F

    move-result v4

    move v5, v4

    goto/16 :goto_5

    .line 420
    :cond_d
    const/4 v4, 0x1

    if-le v10, v4, :cond_f

    move v4, v15

    .line 424
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 428
    add-int/lit8 v4, v10, 0x1

    .line 429
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 430
    const/4 v11, 0x0

    .line 431
    rem-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_e

    .line 432
    const/high16 v7, 0x4000

    div-float v7, v5, v7

    const/high16 v10, 0x4000

    div-float v10, v14, v10

    sub-float v11, v7, v10

    .line 433
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 438
    :cond_e
    :goto_8
    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 439
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)V

    .line 440
    const/4 v7, 0x1

    .line 443
    :goto_9
    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 447
    add-float v2, v5, v3

    add-float v5, v11, v2

    .line 448
    add-int/lit8 v3, v9, 0x1

    .line 449
    invoke-virtual {v8}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    const/4 v2, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v8, v2

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    if-nez v8, :cond_11

    move-object v8, v2

    goto :goto_b

    .line 420
    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .line 449
    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->c()Z

    move-result v10

    if-nez v10, :cond_15

    :goto_c
    move-object v8, v2

    goto :goto_b

    .line 451
    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->c()Z

    :cond_13
    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    move v13, v7

    .line 452
    goto/16 :goto_1

    .line 459
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_15
    move-object v2, v8

    goto :goto_c

    :cond_16
    move v7, v13

    goto :goto_9

    :cond_17
    move v4, v10

    move-object v6, v12

    goto :goto_8
.end method

.method private d()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    invoke-virtual {v0}, Lcom/google/a/c/by;->clear()V

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 240
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Z)V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 213
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/z;->d()V

    .line 226
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->d()Ljava/util/List;

    move-result-object v1

    .line 231
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->e()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, p2, v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->b(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object p2

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/z;->d()V

    .line 487
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/playerprofile/z;->b(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z

    move-result v0

    return v0
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    invoke-virtual {v0}, Lcom/google/a/c/by;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->h:Lcom/google/a/c/by;

    invoke-virtual {v0}, Lcom/google/a/c/by;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/j/d;

    .line 128
    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    .line 132
    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->i:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/common/j/d;)V

    goto :goto_0

    .line 142
    :cond_2
    return-void
.end method

.method public final b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->l:Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0, v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 247
    return-void
.end method

.method public final getPrefWidth()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nianticproject/ingress/common/playerprofile/z;->d:F

    return v0
.end method
