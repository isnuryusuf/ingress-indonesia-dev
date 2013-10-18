.class public final Lcom/nianticproject/ingress/content/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "coalesce(min(timestamp), -1)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "coalesce(max(timestamp), -1)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "count(_id)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/content/d;->a:[Ljava/lang/String;

    return-void
.end method
