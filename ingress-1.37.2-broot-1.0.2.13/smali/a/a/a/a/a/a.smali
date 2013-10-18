.class public final La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z

.field public static final b:La/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-array v0, v1, [Z

    sput-object v0, La/a/a/a/a/a;->a:[Z

    .line 704
    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0, v1}, La/a/a/a/a/b;-><init>(B)V

    sput-object v0, La/a/a/a/a/a;->b:La/a/a/a/d;

    return-void
.end method

.method public static a([Z)V
    .locals 2
    .parameter

    .prologue
    .line 241
    array-length v0, p0

    .line 242
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aput-boolean v0, p0, v1

    move v0, v1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method
