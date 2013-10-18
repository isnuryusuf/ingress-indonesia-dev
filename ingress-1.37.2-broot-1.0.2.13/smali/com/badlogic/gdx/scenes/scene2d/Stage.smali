.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private gutterHeight:F

.field private gutterWidth:F

.field private height:F

.field private keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final ownsBatch:Z

.field private pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final stageCoords:Lcom/badlogic/gdx/math/Vector2;

.field private touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 76
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setViewport(FFZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(FFZLcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 91
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 94
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 100
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setViewport(FFZ)V

    .line 102
    return-void
.end method

.method private fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 200
    if-ne v1, p1, :cond_0

    .line 220
    :goto_0
    return-object p1

    .line 202
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 203
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 204
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 205
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 206
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 211
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 214
    :cond_1
    if-eqz v1, :cond_2

    .line 215
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 216
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 217
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 219
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    move-object p1, v1

    .line 220
    goto :goto_0
.end method


# virtual methods
.method public act()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 159
    return-void
.end method

.method public act(F)V
    .locals 6
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v0, v1

    .line 169
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    if-eqz v3, :cond_0

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 174
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 175
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 176
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 177
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 178
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 179
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 180
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 181
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 182
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 166
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v5

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 190
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_3

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 194
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 446
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 387
    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 388
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 389
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 390
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    .line 391
    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    .line 392
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public cancelTouchFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 415
    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x3100

    .line 420
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 421
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 422
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 423
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 424
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 426
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 427
    iget v1, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 428
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 429
    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v4, p1, :cond_0

    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v4, p2, :cond_1

    .line 430
    :cond_0
    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 431
    iget-object v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 432
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 433
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 434
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 435
    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 427
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 439
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 482
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 595
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    goto :goto_0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getGutterHeight()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterHeight:F

    return v0
.end method

.method public getGutterWidth()F
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterWidth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 566
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 567
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 568
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public keyDown(I)Z
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    .line 348
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 349
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 350
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 351
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 353
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v0

    goto :goto_0
.end method

.method public keyTyped(C)Z
    .locals 2
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    .line 374
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 375
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 376
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 377
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    .line 378
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 379
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 2
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 361
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 362
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 363
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 364
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 365
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 366
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v0

    goto :goto_0
.end method

.method public mouseMoved(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 317
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 318
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 319
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 323
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 324
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 326
    :cond_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 327
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v0

    return v0
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 399
    iget v0, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 400
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 401
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v3, p4, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v3, p5, :cond_0

    .line 403
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 404
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 399
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;)V

    .line 575
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 576
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 577
    return-void
.end method

.method public scrolled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 335
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 336
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 337
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 338
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmount(I)V

    .line 339
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 340
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v0

    goto :goto_0
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 554
    return-void
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 500
    return-void
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 510
    return-void
.end method

.method public setViewport(FFZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 110
    if-eqz p3, :cond_1

    .line 111
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 112
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 113
    div-float v2, v1, v0

    div-float v3, p2, p1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 114
    div-float v2, v1, p2

    .line 115
    div-float v1, p2, v1

    .line 116
    mul-float/2addr v2, p1

    .line 117
    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 118
    add-float v1, p1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 119
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 120
    div-float/2addr v0, v5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterWidth:F

    .line 121
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterHeight:F

    .line 139
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerX:F

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerY:F

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerY:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    .line 145
    return-void

    .line 123
    :cond_0
    div-float v2, v0, p1

    .line 124
    div-float v0, p1, v0

    .line 125
    mul-float/2addr v2, p2

    .line 126
    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 127
    add-float v1, p2, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 128
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 129
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterWidth:F

    .line 130
    div-float/2addr v0, v5

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterHeight:F

    goto :goto_0

    .line 133
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 134
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 135
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterWidth:F

    .line 136
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->gutterHeight:F

    goto :goto_0
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter

    .prologue
    .line 581
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 583
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 584
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 585
    return-void
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-static {v0, p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->toWindowCoordinates(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)V

    .line 591
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 227
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 228
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 229
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 230
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 231
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 232
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 233
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 235
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 236
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 238
    :cond_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 239
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 240
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 241
    return v1
.end method

.method public touchDragged(III)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_0

    move v0, v2

    .line 271
    :goto_0
    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 251
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 252
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 253
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 254
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 255
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 256
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 258
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 259
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 260
    iget v4, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 261
    aget-object v5, v1, v2

    .line 262
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v6, p3, :cond_1

    .line 263
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 264
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 265
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 260
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 269
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 270
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_0

    move v0, v2

    .line 309
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 281
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 282
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 283
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 285
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 286
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 287
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 289
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 290
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 291
    iget v4, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 292
    aget-object v5, v1, v2

    .line 293
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v6, p3, :cond_1

    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v6, p4, :cond_1

    .line 294
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 295
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 296
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 291
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 300
    iget v1, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_4

    .line 301
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 302
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v4, p3, :cond_3

    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v4, p4, :cond_3

    .line 303
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 304
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 300
    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 308
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    move v0, v1

    .line 309
    goto/16 :goto_0
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 495
    :cond_1
    return-void
.end method

.method public unfocusAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 487
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 488
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    .line 489
    return-void
.end method
