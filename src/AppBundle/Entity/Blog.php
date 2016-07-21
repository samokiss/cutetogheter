<?php

    namespace AppBundle\Entity;

    use Doctrine\Common\Collections\ArrayCollection;
    use Doctrine\ORM\Mapping as ORM;
    use AppBundle\Entity\Picture;

    /**
     * Blog
     *
     * @ORM\Table(name="blog")
     * @ORM\Entity(repositoryClass="AppBundle\Repository\BlogRepository")
     */
    class Blog
    {
        /**
         * @var int
         *
         * @ORM\Column(name="id", type="integer")
         * @ORM\Id
         * @ORM\GeneratedValue(strategy="AUTO")
         */
        private $id;

        /**
         * @var string
         *
         * @ORM\Column(name="title", type="string", length=255)
         */
        private $title;

        /**
         * @var string
         *
         * @ORM\Column(name="description", type="text")
         */
        private $description;

        /**
         * @var string
         *
         * @ORM\Column(name="verse", type="string", length=255)
         */
        private $verse;

        /**
         * @var \DateTime
         *
         * @ORM\Column(name="date", type="datetime")
         */
        private $date;

        /**
         * @var int
         *
         * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User")
         * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
         */
        private $user;

        /**
         * @var ArrayCollection
         *
         * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Picture", cascade={"persist"})
         * @ORM\JoinTable(name="blog_picture",
         *      joinColumns={@ORM\JoinColumn(name="blog_id", referencedColumnName="id")},
         *      inverseJoinColumns={@ORM\JoinColumn(name="picture_id", referencedColumnName="id", unique=true)}
         *      )
         */
        private $pictures;

        /**
         * @var int
         *
         * @ORM\OneToMany(targetEntity="AppBundle\Entity\Comment", mappedBy="blog")
         */
        private $comments;


        /**
         * Get id
         *
         * @return int:
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * Set title
         *
         * @param string $title
         *
         * @return Blog
         */
        public function setTitle($title)
        {
            $this->title = $title;

            return $this;
        }

        /**
         * Get title
         *
         * @return string
         */
        public function getTitle()
        {
            return $this->title;
        }

        /**
         * Set description
         *
         * @param string $description
         *
         * @return Blog
         */
        public function setDescription($description)
        {
            $this->description = $description;

            return $this;
        }

        /**
         * Get description
         *
         * @return string
         */
        public function getDescription()
        {
            return $this->description;
        }

        /**
         * Set verse
         *
         * @param string $verse
         *
         * @return Blog
         */
        public function setVerse($verse)
        {
            $this->verse = $verse;

            return $this;
        }

        /**
         * Get verse
         *
         * @return string
         */
        public function getVerse()
        {
            return $this->verse;
        }

        /**
         * Get date
         *
         * @param \DateTime $date
         *
         * @return \DateTime
         */
        public function getDate()
        {
            return $this->date;
        }

        /**
         * Set date
         *
         * @param \DateTime $date
         *
         */
        public function setDate($date)
        {
            $this->date = $date;
        }

        /**
         * @return int
         */
        public function getUser()
        {
            return $this->user;
        }

        /**
         * @param int $user
         */
        public function setUser($user)
        {
            $this->user = $user;
        }



        /**
         * Constructor
         */
        public function __construct()
        {
            $this->pictures = new \Doctrine\Common\Collections\ArrayCollection();
        }

        /**
         * Add picture
         *
         * @param \AppBundle\Entity\Picture $picture
         *
         * @return Blog
         */
        public function addPicture(\AppBundle\Entity\Picture $picture)
        {
            $this->pictures[] = $picture;

            return $this;
        }

        /**
         * Remove picture
         *
         * @param \AppBundle\Entity\Picture $picture
         */
        public function removePicture(\AppBundle\Entity\Picture $picture)
        {
            $this->pictures->removeElement($picture);
        }

        /**
         * Get pictures
         *
         * @return \Doctrine\Common\Collections\Collection
         */
        public function getPictures()
        {
            return $this->pictures;
        }

        /**
         * @return mixed
         */
        public function getComments()
        {
            return $this->comments;
        }

        /**
         * @param mixed $comments
         */
        public function setComments($comments)
        {
            $this->comments = $comments;
        }


    }
