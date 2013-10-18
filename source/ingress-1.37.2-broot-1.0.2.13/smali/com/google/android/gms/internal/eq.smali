.class public final Lcom/google/android/gms/internal/eq;
.super Lcom/google/android/gms/internal/an;

# interfaces
.implements Lcom/google/android/gms/internal/ae;
.implements Lcom/google/android/gms/plus/a/b/a;


# static fields
.field public static final a:Lcom/google/android/gms/internal/fc;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/an$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$i;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/eq$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/google/android/gms/internal/eq$b;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/google/android/gms/internal/eq$d;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/google/android/gms/internal/eq$e;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$g;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$h;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/fc;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "aboutMe"

    const-string/jumbo v2, "aboutMe"

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "ageRange"

    const-string/jumbo v2, "ageRange"

    const-class v3, Lcom/google/android/gms/internal/eq$a;

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "birthday"

    const-string/jumbo v2, "birthday"

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "braggingRights"

    const-string/jumbo v2, "braggingRights"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "circledByCount"

    const-string/jumbo v2, "circledByCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "cover"

    const-string/jumbo v2, "cover"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/internal/eq$b;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "currentLocation"

    const-string/jumbo v2, "currentLocation"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "displayName"

    const-string/jumbo v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "emails"

    const-string/jumbo v2, "emails"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/internal/eq$c;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "etag"

    const-string/jumbo v2, "etag"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "gender"

    const-string/jumbo v2, "gender"

    const/16 v3, 0xc

    new-instance v4, Lcom/google/android/gms/internal/ak;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ak;-><init>()V

    const-string/jumbo v5, "male"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "female"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "other"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/j;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "hasApp"

    const-string/jumbo v2, "hasApp"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "id"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    const-string/jumbo v2, "image"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/eq$d;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "isPlusUser"

    const-string/jumbo v2, "isPlusUser"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "language"

    const-string/jumbo v2, "language"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/eq$e;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "nickname"

    const-string/jumbo v2, "nickname"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "objectType"

    const-string/jumbo v2, "objectType"

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/gms/internal/ak;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ak;-><init>()V

    const-string/jumbo v5, "person"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "page"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/j;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "organizations"

    const-string/jumbo v2, "organizations"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/internal/eq$g;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "placesLived"

    const-string/jumbo v2, "placesLived"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/internal/eq$h;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "plusOneCount"

    const-string/jumbo v2, "plusOneCount"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "relationshipStatus"

    const-string/jumbo v2, "relationshipStatus"

    const/16 v3, 0x19

    new-instance v4, Lcom/google/android/gms/internal/ak;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ak;-><init>()V

    const-string/jumbo v5, "single"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "in_a_relationship"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "engaged"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "married"

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "its_complicated"

    invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "open_relationship"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "widowed"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "in_domestic_partnership"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    const-string/jumbo v5, "in_civil_union"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ak;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ak;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/j;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "tagline"

    const-string/jumbo v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->d(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "urls"

    const-string/jumbo v2, "urls"

    const/16 v3, 0x1c

    const-class v4, Lcom/google/android/gms/internal/eq$i;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/an$a;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "verified"

    const-string/jumbo v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/an$a;->c(Ljava/lang/String;I)Lcom/google/android/gms/internal/an$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/an;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/eq;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/eq$a;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/eq$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;Lcom/google/android/gms/internal/eq$d;ZLjava/lang/String;Lcom/google/android/gms/internal/eq$e;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/eq$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/eq$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$c;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/eq$d;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/eq$e;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$h;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/an;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eq;->c:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/eq;->d:I

    iput-object p3, p0, Lcom/google/android/gms/internal/eq;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/eq;->f:Lcom/google/android/gms/internal/eq$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/eq;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/eq;->h:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/eq;->i:I

    iput-object p8, p0, Lcom/google/android/gms/internal/eq;->j:Lcom/google/android/gms/internal/eq$b;

    iput-object p9, p0, Lcom/google/android/gms/internal/eq;->k:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/eq;->l:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/eq;->m:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/internal/eq;->n:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/eq;->o:I

    iput-boolean p14, p0, Lcom/google/android/gms/internal/eq;->p:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->q:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->r:Lcom/google/android/gms/internal/eq$d;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eq;->s:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->t:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->u:Lcom/google/android/gms/internal/eq$e;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->v:Ljava/lang/String;

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/internal/eq;->w:I

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->x:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->y:Ljava/util/List;

    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/gms/internal/eq;->z:I

    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/gms/internal/eq;->A:I

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->B:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->C:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->D:Ljava/util/List;

    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eq;->E:Z

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/eq;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/fc;

    invoke-static {v0}, Lcom/google/android/gms/internal/fc;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/eq;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->y:Ljava/util/List;

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->z:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->A:I

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->C:Ljava/lang/String;

    return-object v0
.end method

.method final F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->D:Ljava/util/List;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->E:Z

    return v0
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected final a(Lcom/google/android/gms/internal/an$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->f:Lcom/google/android/gms/internal/eq$a;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/eq;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->j:Lcom/google/android/gms/internal/eq$b;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->m:Ljava/util/List;

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget v0, p0, Lcom/google/android/gms/internal/eq;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->q:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->r:Lcom/google/android/gms/internal/eq$d;

    goto :goto_0

    :pswitch_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->s:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->t:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->u:Lcom/google/android/gms/internal/eq$e;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->v:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    iget v0, p0, Lcom/google/android/gms/internal/eq;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->x:Ljava/util/List;

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->y:Ljava/util/List;

    goto :goto_0

    :pswitch_16
    iget v0, p0, Lcom/google/android/gms/internal/eq;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_17
    iget v0, p0, Lcom/google/android/gms/internal/eq;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->B:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->C:Ljava/lang/String;

    goto :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->D:Ljava/util/List;

    goto :goto_0

    :pswitch_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->E:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public final b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/an$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/fc;

    const/4 v0, 0x0

    return v0
.end method

.method final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/eq;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/eq;

    sget-object v0, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->d:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->e:Ljava/lang/String;

    return-object v0
.end method

.method final h()Lcom/google/android/gms/internal/eq$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->f:Lcom/google/android/gms/internal/eq$a;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/eq;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->a(Lcom/google/android/gms/internal/an$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an$a;->g()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->b(Lcom/google/android/gms/internal/an$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->i:I

    return v0
.end method

.method final l()Lcom/google/android/gms/internal/eq$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->j:Lcom/google/android/gms/internal/eq$b;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->l:Ljava/lang/String;

    return-object v0
.end method

.method final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->m:Ljava/util/List;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->o:I

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->p:Z

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->q:Ljava/lang/String;

    return-object v0
.end method

.method final t()Lcom/google/android/gms/internal/eq$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->r:Lcom/google/android/gms/internal/eq$d;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->s:Z

    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->t:Ljava/lang/String;

    return-object v0
.end method

.method final w()Lcom/google/android/gms/internal/eq$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->u:Lcom/google/android/gms/internal/eq$e;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eq;->a:Lcom/google/android/gms/internal/fc;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/eq;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->w:I

    return v0
.end method

.method final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/eq$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->x:Ljava/util/List;

    return-object v0
.end method
