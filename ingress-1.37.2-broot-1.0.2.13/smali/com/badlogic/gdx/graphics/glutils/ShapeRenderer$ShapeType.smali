.class public final enum Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Box:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Circle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum FilledCircle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum FilledRectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum FilledTriangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Rectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public static final enum Triangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;


# instance fields
.field private final glType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Point"

    invoke-direct {v0, v1, v5, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Line"

    invoke-direct {v0, v1, v3, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Rectangle"

    invoke-direct {v0, v1, v6, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Rectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "FilledRectangle"

    invoke-direct {v0, v1, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledRectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Box"

    invoke-direct {v0, v1, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Box:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Circle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Circle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 87
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "FilledCircle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledCircle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "Triangle"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Triangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const-string/jumbo v1, "FilledTriangle"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledTriangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Rectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledRectangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Box:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Circle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledCircle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Triangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->FilledTriangle:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->glType:I

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .locals 1
    .parameter

    .prologue
    .line 80
    const-class v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->$VALUES:[Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-object v0
.end method


# virtual methods
.method public final getGlType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->glType:I

    return v0
.end method
