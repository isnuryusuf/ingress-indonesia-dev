.class public Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static axis:Lcom/badlogic/gdx/math/Vector2;

.field private static lower:Lcom/badlogic/gdx/math/Vector2;

.field private static t:Lcom/badlogic/gdx/math/Vector2;

.field private static upper:Lcom/badlogic/gdx/math/Vector2;

.field private static vertices:[Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private final AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private final JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

.field private final SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

.field private drawAABBs:Z

.field private drawBodies:Z

.field private drawInactiveBodies:Z

.field private drawJoints:Z

.field private final f:Lcom/badlogic/gdx/math/Vector2;

.field private final lv:Lcom/badlogic/gdx/math/Vector2;

.field protected renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private final v:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    .line 181
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    .line 182
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;-><init>(ZZZZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x3f333333

    const v5, 0x3f666666

    const v2, 0x3f19999a

    const/high16 v4, 0x3f00

    const/high16 v3, 0x3f80

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a

    invoke-direct {v0, v4, v4, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v6, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f4ccccd

    const v2, 0x3f4ccccd

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 222
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    .line 224
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    .line 62
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    .line 66
    iput-boolean p2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    .line 67
    iput-boolean p3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    .line 68
    iput-boolean p4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    .line 69
    return-void
.end method

.method private drawAABB(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 142
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v1

    .line 143
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v7

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 144
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v7

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->getRotation()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 145
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v1

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 146
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v1

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 149
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v7

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 150
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 151
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v8

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 152
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v9

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 154
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v10, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 157
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v3

    .line 159
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v1, v1, v7

    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 160
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v7

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 161
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move v1, v2

    .line 162
    :goto_1
    if-ge v1, v3, :cond_2

    .line 163
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 164
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 165
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 166
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 167
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 168
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v6, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v7

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 173
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 174
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v8

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 175
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v9

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lower:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->upper:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 177
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->AABB_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v10, v1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0
.end method

.method private drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 4
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getWorldManifold()Lcom/badlogic/gdx/physics/box2d/WorldManifold;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->getNumberOfContactPoints()I

    move-result v1

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/WorldManifold;->getPoints()[Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 297
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->point(FFF)V

    goto :goto_0
.end method

.method private drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 6
    .parameter

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyA()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getBodyB()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v0

    .line 263
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 266
    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Transform;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 270
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v4, v5, :cond_0

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v3, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 286
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v4, v5, :cond_1

    .line 273
    check-cast p1, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    .line 274
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;->getGroundAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 276
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v2, v4}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 277
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v3, v2}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 278
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getType()Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v4, v5, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorA()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Joint;->getAnchorB()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v2, v4}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v3, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->JOINT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v3, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method private drawSegment(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 291
    return-void
.end method

.method private drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v2, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 187
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 188
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 189
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->t:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v0

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v4, v4, v8

    iget-object v5, p2, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v2, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    .line 194
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->getVertex1(Lcom/badlogic/gdx/math/Vector2;)V

    .line 195
    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->getVertex2(Lcom/badlogic/gdx/math/Vector2;)V

    .line 196
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 197
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v7

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 198
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v0, v8, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v2, :cond_3

    .line 202
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    .line 203
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertexCount()I

    move-result v3

    move v2, v1

    .line 204
    :goto_0
    if-ge v2, v3, :cond_2

    .line 205
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 206
    sget-object v4, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v4, v4, v2

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v0, v3, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    .line 211
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    if-ne v0, v2, :cond_5

    .line 212
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/ChainShape;

    .line 213
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->getVertexCount()I

    move-result v2

    .line 214
    :goto_1
    if-ge v1, v2, :cond_4

    .line 215
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/physics/box2d/ChainShape;->getVertex(ILcom/badlogic/gdx/math/Vector2;)V

    .line 216
    sget-object v3, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/physics/box2d/Transform;->mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->vertices:[Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v0, v2, p3}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V

    .line 220
    :cond_5
    return-void
.end method

.method private drawSolidCircle(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 227
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    .line 230
    const/4 v0, 0x0

    move v1, v3

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p2

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, p2

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 232
    if-nez v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 234
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 230
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const v2, 0x3ea0d97c

    add-float/2addr v1, v2

    goto :goto_0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v7, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 238
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFF)V

    .line 242
    return-void
.end method

.method private drawSolidPolygon([Lcom/badlogic/gdx/math/Vector2;ILcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v1, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    .line 246
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 247
    aget-object v1, p1, v0

    .line 248
    if-nez v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 250
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 246
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 254
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->lv:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 257
    return-void
.end method

.method public static getAxis()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method private renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 88
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    if-eqz v0, :cond_9

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getBodies()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 92
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getTransform()Lcom/badlogic/gdx/physics/box2d/Transform;

    move-result-object v5

    .line 96
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 97
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v7

    move v3, v2

    .line 98
    :goto_0
    if-ge v3, v6, :cond_1

    .line 99
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 101
    iget-boolean v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    if-eqz v8, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v8

    if-nez v8, :cond_5

    .line 103
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v5, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    .line 114
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    if-eqz v8, :cond_4

    .line 115
    invoke-direct {p0, v1, v5}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABB(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;)V

    .line 98
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_6

    .line 105
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_STATIC:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v5, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getType()Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-ne v8, v9, :cond_7

    .line 107
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_KINEMATIC:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v5, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 108
    :cond_7
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isAwake()Z

    move-result v8

    if-nez v8, :cond_8

    .line 109
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_NOT_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v5, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 111
    :cond_8
    iget-object v8, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->SHAPE_AWAKE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v5, v8}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawShape(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Transform;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    .line 121
    :cond_9
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    if-eqz v0, :cond_a

    .line 122
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getJoints()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Joint;

    .line 124
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    goto :goto_2

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 129
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/high16 v1, 0x4040

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glPointSize(F)V

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 131
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 132
    :goto_3
    if-ge v1, v3, :cond_c

    .line 133
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/World;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 135
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL10;->glPointSize(F)V

    .line 136
    :cond_d
    return-void
.end method

.method public static setAxis(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    sput-object p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->axis:Lcom/badlogic/gdx/math/Vector2;

    .line 338
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->dispose()V

    .line 342
    return-void
.end method

.method public isDrawAABBs()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    return v0
.end method

.method public isDrawBodies()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    return v0
.end method

.method public isDrawInactiveBodies()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    return v0
.end method

.method public isDrawJoints()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    return v0
.end method

.method public render(Lcom/badlogic/gdx/physics/box2d/World;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->renderBodies(Lcom/badlogic/gdx/physics/box2d/World;)V

    .line 75
    return-void
.end method

.method public setDrawAABBs(Z)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawAABBs:Z

    .line 322
    return-void
.end method

.method public setDrawBodies(Z)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawBodies:Z

    .line 306
    return-void
.end method

.method public setDrawInactiveBodies(Z)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawInactiveBodies:Z

    .line 330
    return-void
.end method

.method public setDrawJoints(Z)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/badlogic/gdx/physics/box2d/Box2DDebugRenderer;->drawJoints:Z

    .line 314
    return-void
.end method
