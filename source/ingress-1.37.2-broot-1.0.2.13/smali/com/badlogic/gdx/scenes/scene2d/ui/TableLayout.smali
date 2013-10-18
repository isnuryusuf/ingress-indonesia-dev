.class Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;
.super Lcom/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;",
        ">;"
    }
.end annotation


# instance fields
.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field round:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;

    invoke-direct {p0, v0}, Lcom/a/a/a;-><init>(Lcom/a/a/d;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->round:Z

    .line 44
    return-void
.end method

.method private toStageCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    :goto_0
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 92
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 13
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getDebug()Lcom/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/a/a/b;->a:Lcom/a/a/b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    if-nez v0, :cond_2

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    .line 104
    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object v3, v0

    .line 106
    :goto_2
    if-eqz v3, :cond_4

    .line 107
    instance-of v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_a

    .line 108
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    add-float/2addr v2, v0

    .line 109
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v2

    .line 111
    :goto_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    move-object v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 101
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer10;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 115
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move v5, v0

    :goto_4
    if-ge v5, v6, :cond_9

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;

    .line 117
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->x:F

    add-float v7, v2, v3

    .line 118
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->y:F

    add-float/2addr v3, v1

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->height:F

    sub-float v8, v3, v4

    .line 119
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->width:F

    add-float v9, v7, v3

    .line 120
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->height:F

    add-float v10, v8, v3

    .line 121
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->type:Lcom/a/a/b;

    sget-object v4, Lcom/a/a/b;->d:Lcom/a/a/b;

    if-ne v3, v4, :cond_6

    const/high16 v3, 0x3f80

    .line 122
    :goto_5
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->type:Lcom/a/a/b;

    sget-object v11, Lcom/a/a/b;->e:Lcom/a/a/b;

    if-ne v4, v11, :cond_7

    const/high16 v4, 0x3f80

    .line 123
    :goto_6
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;->type:Lcom/a/a/b;

    sget-object v11, Lcom/a/a/b;->c:Lcom/a/a/b;

    if-ne v0, v11, :cond_8

    const/high16 v0, 0x3f80

    .line 125
    :goto_7
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v3, v4, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 126
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v7, v8, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 127
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v3, v4, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 128
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v7, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 130
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v3, v4, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 131
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v7, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 132
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v3, v4, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 133
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v9, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 135
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v12, 0x3f80

    invoke-interface {v11, v3, v4, v0, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 136
    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v12, 0x0

    invoke-interface {v11, v9, v10, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 137
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v11, 0x3f80

    invoke-interface {v10, v3, v4, v0, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 138
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v10, v9, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 140
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v11, 0x3f80

    invoke-interface {v10, v3, v4, v0, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 141
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v11, 0x0

    invoke-interface {v10, v9, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 142
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v10, 0x3f80

    invoke-interface {v9, v3, v4, v0, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v3, 0x0

    invoke-interface {v0, v7, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_5

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 115
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_4

    .line 121
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 122
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 123
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 150
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRenderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move v1, v2

    goto/16 :goto_3
.end method

.method public invalidateHierarchy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/a/a/a;->invalidate()V

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    .line 87
    return-void
.end method

.method public layout()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 48
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v5

    .line 51
    invoke-super {p0, v2, v2, v1, v5}, Lcom/a/a/a;->layout(FFFF)V

    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getCells()Ljava/util/List;

    move-result-object v6

    .line 54
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->round:Z

    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_3

    .line 56
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/c;

    .line 57
    invoke-virtual {v1}, Lcom/a/a/c;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 59
    invoke-virtual {v1}, Lcom/a/a/c;->w()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 60
    invoke-virtual {v1}, Lcom/a/a/c;->t()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Lcom/a/a/c;->u()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    sub-float/2addr v10, v8

    invoke-virtual {v1}, Lcom/a/a/c;->v()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v9, v10, v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 55
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_3

    .line 65
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/c;

    .line 66
    invoke-virtual {v1}, Lcom/a/a/c;->q()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    invoke-virtual {v1}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 68
    invoke-virtual {v1}, Lcom/a/a/c;->w()F

    move-result v8

    .line 69
    invoke-virtual {v1}, Lcom/a/a/c;->t()F

    move-result v9

    invoke-virtual {v1}, Lcom/a/a/c;->u()F

    move-result v10

    sub-float v10, v5, v10

    sub-float/2addr v10, v8

    invoke-virtual {v1}, Lcom/a/a/c;->v()F

    move-result v1

    invoke-virtual {v2, v9, v10, v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 64
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 73
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_5

    .line 74
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v3, :cond_4

    .line 76
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 77
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidate()V

    .line 78
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 73
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 81
    :cond_5
    return-void
.end method
