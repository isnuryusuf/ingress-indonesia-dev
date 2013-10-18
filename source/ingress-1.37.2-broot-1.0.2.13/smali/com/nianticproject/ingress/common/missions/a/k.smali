.class final Lcom/nianticproject/ingress/common/missions/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/common/missions/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x447a

    .line 27
    check-cast p1, Lcom/nianticproject/ingress/common/missions/a/k;

    iget v0, p0, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
