.class public final Lcom/nianticproject/ingress/content/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "plext_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "markup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "categories"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "has_nudge"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/content/b;->a:[Ljava/lang/String;

    return-void
.end method
