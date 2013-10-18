.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field private background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private clip:Z

.field private final layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;-><init>()V

    sput-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->setTable(Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 85
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 121
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v1, :cond_0

    .line 122
    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 123
    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 131
    sget-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadLeft()Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/a/a/e;->b(Ljava/lang/Object;)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 126
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadBottom()Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/a/a/e;->c(Ljava/lang/Object;)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 127
    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadRight()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/a/a/e;->b(Ljava/lang/Object;)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 128
    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadTop()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/a/a/e;->c(Ljava/lang/Object;)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_0
.end method

.method public static drawDebug(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2
    .parameter

    .prologue
    .line 464
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->drawDebug:Z

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebug(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0
.end method

.method private static drawDebug(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 470
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 471
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->drawDebug(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 472
    :cond_0
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebug(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 469
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 474
    :cond_2
    return-void
.end method


# virtual methods
.method public add()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->add(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;)Lcom/a/a/c;
    .locals 2
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Table must have a skin set to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->align(I)Lcom/a/a/a;

    .line 364
    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->bottom()Lcom/a/a/a;

    .line 388
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->center()Lcom/a/a/a;

    .line 370
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clear()V

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->clear()V

    .line 215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 216
    return-void
.end method

.method public columnDefaults(I)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->columnDefaults(I)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debug()Lcom/a/a/a;

    .line 400
    return-object p0
.end method

.method public debug(Lcom/a/a/b;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debug(Lcom/a/a/b;)Lcom/a/a/a;

    .line 424
    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugCell()Lcom/a/a/a;

    .line 412
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugTable()Lcom/a/a/a;

    .line 406
    return-object p0
.end method

.method public debugWidget()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugWidget()Lcom/a/a/a;

    .line 418
    return-object p0
.end method

.method public defaults()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->defaults()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 93
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 95
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 98
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 105
    :goto_1
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_1
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 112
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 115
    :cond_0
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getAlign()I

    move-result v0

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getCell(Ljava/lang/Object;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getCells()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Lcom/a/a/b;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getDebug()Lcom/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public getPadBottom()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadBottom()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getPadLeft()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadLeft()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getPadRight()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadRight()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getPadTop()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPadTop()Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPrefHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPrefHeight()F

    move-result v0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPrefWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getPrefWidth()F

    move-result v0

    goto :goto_0
.end method

.method public getRow(F)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getRow(F)I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->invalidate()V

    .line 137
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 138
    return-void
.end method

.method public layout()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->layout()V

    .line 272
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->left()Lcom/a/a/a;

    .line 382
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->pad(F)Lcom/a/a/a;

    .line 328
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->pad(FFFF)Lcom/a/a/a;

    .line 333
    return-object p0
.end method

.method public pad(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->pad(Lcom/a/a/e;)Lcom/a/a/a;

    .line 293
    return-object p0
.end method

.method public pad(Lcom/a/a/e;Lcom/a/a/e;Lcom/a/a/e;Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->pad(Lcom/a/a/e;Lcom/a/a/e;Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/a;

    .line 298
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padBottom(F)Lcom/a/a/a;

    .line 351
    return-object p0
.end method

.method public padBottom(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padBottom(Lcom/a/a/e;)Lcom/a/a/a;

    .line 316
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padLeft(F)Lcom/a/a/a;

    .line 345
    return-object p0
.end method

.method public padLeft(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padLeft(Lcom/a/a/e;)Lcom/a/a/a;

    .line 310
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padRight(F)Lcom/a/a/a;

    .line 357
    return-object p0
.end method

.method public padRight(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padRight(Lcom/a/a/e;)Lcom/a/a/a;

    .line 322
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padTop(F)Lcom/a/a/a;

    .line 339
    return-object p0
.end method

.method public padTop(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->padTop(Lcom/a/a/e;)Lcom/a/a/a;

    .line 304
    return-object p0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->reset()V

    .line 278
    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->right()Lcom/a/a/a;

    .line 394
    return-object p0
.end method

.method public row()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->row()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 5
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 168
    if-nez p1, :cond_1

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    .line 173
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    .line 174
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    .line 175
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    .line 178
    instance-of v4, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v4, :cond_2

    .line 179
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    .line 180
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->getPadding()Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_2

    .line 182
    iget v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->topPadding:F

    .line 183
    iget v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->leftPadding:F

    .line 184
    iget v1, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->bottomPadding:F

    .line 185
    iget v0, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->rightPadding:F

    .line 188
    :cond_2
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 189
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_0
.end method

.method public setClip(Z)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 201
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 203
    return-void
.end method

.method public setRound(Z)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    iput-boolean p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->round:Z

    .line 458
    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 453
    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;
    .locals 4
    .parameter

    .prologue
    .line 244
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    .line 245
    if-eqz p1, :cond_0

    .line 246
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 247
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->layout:Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->top()Lcom/a/a/a;

    .line 376
    return-object p0
.end method
