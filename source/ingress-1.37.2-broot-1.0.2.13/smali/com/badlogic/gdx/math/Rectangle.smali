.class public Lcom/badlogic/gdx/math/Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f909a54ea199076L

.field public static final tmp:Lcom/badlogic/gdx/math/Rectangle;

.field public static final tmp2:Lcom/badlogic/gdx/math/Rectangle;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 43
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 44
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 45
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 52
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 53
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 55
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 6
    .parameter

    .prologue
    .line 104
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 105
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v0

    .line 107
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 108
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v2

    .line 110
    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return v0
.end method

.method public merge(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 147
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 148
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 149
    sub-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 152
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 153
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 154
    sub-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 155
    return-void
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 122
    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 123
    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 124
    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 125
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 139
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 140
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 141
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 99
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 88
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 66
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
