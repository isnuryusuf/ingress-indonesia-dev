.class public Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final a:Lcom/google/android/gms/internal/er;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/er;

    invoke-direct {v0}, Lcom/google/android/gms/internal/er;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eb;->a:Lcom/google/android/gms/internal/er;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/eb;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/eb;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/eb;->e:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/eb;->f:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eb;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eb;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/eb;Landroid/os/Parcel;)V

    return-void
.end method
