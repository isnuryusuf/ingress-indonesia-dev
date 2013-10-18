.class public interface abstract Lcom/nianticproject/ingress/common/scanner/modes/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fe72d0e60000000L

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/modes/j;->d:F

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/modes/j;->e:F

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/nianticproject/ingress/common/j/ap;)Lcom/nianticproject/ingress/common/j/ap;
.end method
