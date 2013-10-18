.class public Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C1:I = 0x3

.field public static final C2:I = 0x9

.field public static final C3:I = 0xf

.field public static final C4:I = 0x15

.field public static final SIZE:I = 0x18

.field public static final U1:I = 0x4

.field public static final U2:I = 0xa

.field public static final U3:I = 0x10

.field public static final U4:I = 0x16

.field public static final V1:I = 0x5

.field public static final V2:I = 0xb

.field public static final V3:I = 0x11

.field public static final V4:I = 0x17

.field private static final VERTEX_SIZE:I = 0x6

.field public static final X1:I = 0x0

.field public static final X2:I = 0x6

.field public static final X3:I = 0xc

.field public static final X4:I = 0x12

.field protected static final X_AXIS:Lcom/badlogic/gdx/math/Vector3; = null

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x7

.field public static final Y3:I = 0xd

.field public static final Y4:I = 0x13

.field protected static final Y_AXIS:Lcom/badlogic/gdx/math/Vector3; = null

.field public static final Z1:I = 0x2

.field public static final Z2:I = 0x8

.field public static final Z3:I = 0xe

.field public static final Z4:I = 0x14

.field protected static final Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

.field static final dir:Lcom/badlogic/gdx/math/Vector3;

.field protected static rotator:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp:Lcom/badlogic/gdx/math/Vector3;

.field private static tmp2:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected dimensions:Lcom/badlogic/gdx/math/Vector2;

.field protected material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

.field protected position:Lcom/badlogic/gdx/math/Vector3;

.field protected rotation:Lcom/badlogic/gdx/math/Quaternion;

.field protected scale:Lcom/badlogic/gdx/math/Vector2;

.field public transformationOffset:Lcom/badlogic/gdx/math/Vector2;

.field protected updated:Z

.field public value:I

.field protected vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 484
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 520
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    .line 521
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->X_AXIS:Lcom/badlogic/gdx/math/Vector3;

    .line 522
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Y_AXIS:Lcom/badlogic/gdx/math/Vector3;

    .line 523
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 60
    return-void
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 554
    invoke-static {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 578
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;-><init>()V

    .line 579
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 580
    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setBlending(II)V

    .line 581
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 582
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 583
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setColor(FFFF)V

    .line 584
    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 565
    if-eqz p3, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p3, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 530
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 540
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v3, v1

    if-eqz p1, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p1, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {v2, v3, p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getRotation()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public lookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 490
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 491
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 492
    return-void
.end method

.method protected resetVertices()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v3, 0x4000

    const/4 v6, 0x0

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v0, v0

    div-float/2addr v0, v3

    .line 417
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v0

    .line 418
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v2, v3

    .line 419
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, v2, v3

    .line 422
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aput v0, v4, v7

    .line 423
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 424
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x2

    aput v6, v4, v5

    .line 426
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x6

    aput v1, v4, v5

    .line 427
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x7

    aput v2, v4, v5

    .line 428
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0x8

    aput v6, v2, v4

    .line 430
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0xc

    aput v0, v2, v4

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xd

    aput v3, v0, v2

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xe

    aput v6, v0, v2

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 435
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0x14

    aput v6, v0, v1

    .line 438
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 439
    return-void
.end method

.method public rotateX(F)V
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->X_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 84
    return-void
.end method

.method public rotateY(F)V
    .locals 2
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Y_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 93
    return-void
.end method

.method public rotateZ(F)V
    .locals 2
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 102
    return-void
.end method

.method public setBlending(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    .line 478
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 69
    mul-float v0, v2, p4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 70
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 73
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xf

    aput v0, v1, v2

    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x15

    aput v0, v1, v2

    .line 75
    return-void
.end method

.method public setDimensions(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 287
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 273
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 202
    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 109
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 112
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 252
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 244
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 217
    return-void
.end method

.method public setScaleY(F)V
    .locals 2
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 230
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 463
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updateUVs()V

    .line 464
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 260
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 135
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 156
    return-void
.end method

.method public setZ(F)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 177
    return-void
.end method

.method protected transformVertices()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v0

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v0, v0

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v2, v2, v9

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    .line 326
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v3, v10

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    .line 327
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v4, v11

    .line 329
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    aput v6, v5, v9

    .line 330
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    aput v6, v5, v10

    .line 331
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    aput v6, v5, v11

    .line 332
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v5, v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 333
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 334
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v3, v9

    .line 335
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v4, v10

    .line 336
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v5, v5, v11

    .line 337
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 338
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 339
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v6, v11

    .line 340
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 342
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v2, v9

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v9

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v2, v10

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v10

    .line 344
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v2, v11

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    aput v3, v2, v11

    .line 347
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v2, v2, v12

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    .line 348
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v3, v13

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    .line 349
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    .line 351
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    aput v6, v5, v12

    .line 352
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    aput v6, v5, v13

    .line 353
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 354
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v5, v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 355
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 356
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v3, v12

    .line 357
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v4, v13

    .line 358
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    .line 359
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 360
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v13

    .line 361
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v8

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v6, v7

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 364
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v2, v12

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v12

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v2, v13

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v13

    .line 366
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 369
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    .line 370
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    .line 371
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xe

    aget v4, v4, v5

    .line 373
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 374
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 375
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0xe

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 376
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v5, v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 377
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 378
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    .line 379
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    .line 380
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0xe

    aget v5, v5, v6

    .line 381
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 382
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 383
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v8

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v6, v7

    .line 384
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 386
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xc

    aget v4, v2, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 387
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xd

    aget v4, v2, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 388
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xe

    aget v4, v2, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 391
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x12

    aget v2, v2, v3

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    .line 392
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0x13

    aget v3, v3, v4

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    .line 393
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x14

    aget v4, v4, v5

    .line 395
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x12

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 396
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x13

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 397
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 398
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v5, v5

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 399
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 400
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v4, 0x12

    aget v3, v3, v4

    .line 401
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x13

    aget v4, v4, v5

    .line 402
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v6, 0x14

    aget v5, v5, v6

    .line 403
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 404
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 405
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v8

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v3, v3, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v6, v7

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 408
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x12

    aget v4, v2, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v1, v5, v1

    add-float/2addr v1, v4

    aput v1, v2, v3

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x13

    aget v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v0, v4, v0

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0x14

    aget v2, v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 411
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 412
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0
.end method

.method public translate(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 192
    return-void
.end method

.method public translateX(F)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 127
    return-void
.end method

.method public translateY(F)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 148
    return-void
.end method

.method public translateZ(F)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 169
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->resetVertices()V

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformVertices()V

    .line 303
    :cond_0
    return-void
.end method

.method protected updateUVs()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 445
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 446
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 448
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 449
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xb

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 451
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 452
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x11

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    aput v3, v1, v2

    .line 454
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x16

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 455
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x17

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    aput v0, v1, v2

    .line 456
    return-void
.end method
